package br.com.mac.funcionario.utils;

import java.util.ArrayList;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

/**
 * Utility class for creating a Page object.
 */
public final class PageUtil {

  private PageUtil() {
  }

  /**
   * Create a {@link Page} from a {@link List} of objects
   *
   * @param list     list of objects
   * @param pageable pagination information.
   * @param <T>      type of object
   *
   * @return page containing objects, and attributes set according to pageable
   *
   * @throws IllegalArgumentException - if list is null
   */
  public static <T> Page<T> createPageFromList(List<T> list, Pageable pageable) {
    if (list == null) {
      throw new IllegalArgumentException("To create a Page, the list mustn't be null!");
    }

    int startOfPage = pageable.getPageNumber() * pageable.getPageSize();
    Page<T> result;
    if (startOfPage > list.size()) {
      result = new PageImpl<>(new ArrayList<>(), pageable, 0);
    } else {
      int endOfPage = Math.min(startOfPage + pageable.getPageSize(), list.size());
      result = new PageImpl<>(list.subList(startOfPage, endOfPage), pageable, list.size());
    }

    return result;
  }
}
